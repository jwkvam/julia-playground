module EMD

using Interpolations

export allExtrema

function IMF(y)



end



function allExtrema{T<:Real}(x::Vector{T}, padding=1::Int)

    maxima = Int[]
    minima = Int[]
    
    for i in 2:length(x)-1
        slice = i-padding:i+padding
        if indmax(x[slice]) == 2
            push!(maxima, i)
        elseif indmin(x[slice]) == 2
            push!(minima, i)
        end
    end

    return maxima, minima
end

end # module
